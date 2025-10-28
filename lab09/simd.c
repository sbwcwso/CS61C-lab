#include <time.h>
#include <stdio.h>
#include <x86intrin.h>
#include "simd.h"

long long int sum(int vals[NUM_ELEMS]) {
	clock_t start = clock();

	long long int sum = 0;
	for(unsigned int w = 0; w < OUTER_ITERATIONS; w++) {
		for(unsigned int i = 0; i < NUM_ELEMS; i++) {
			if(vals[i] >= 128) {
				sum += vals[i];
			}
            // sum += vals[i] * (vals[i] >= 128);
		}
	}
	clock_t end = clock();
	printf("Time taken: %Lf s\n", (long double)(end - start) / CLOCKS_PER_SEC);
	return sum;
}

long long int sum_unrolled(int vals[NUM_ELEMS]) {
	clock_t start = clock();
	long long int sum = 0;

	for(unsigned int w = 0; w < OUTER_ITERATIONS; w++) {
		for(unsigned int i = 0; i < NUM_ELEMS / 4 * 4; i += 4) {
			if(vals[i] >= 128) sum += vals[i];
			if(vals[i + 1] >= 128) sum += vals[i + 1];
			if(vals[i + 2] >= 128) sum += vals[i + 2];
			if(vals[i + 3] >= 128) sum += vals[i + 3];
            // sum = sum + vals[i] * (vals[i] >= 128) + vals[i + 1] * (vals[i + 1] >= 128) + vals[i + 2] * (vals[i + 2] >= 128) + vals[i + 3] * (vals[i + 3] >= 128);
		}

		//This is what we call the TAIL CASE
		//For when NUM_ELEMS isn't a multiple of 4
		//NONTRIVIAL FACT: NUM_ELEMS / 4 * 4 is the largest multiple of 4 less than NUM_ELEMS
		for(unsigned int i = NUM_ELEMS / 4 * 4; i < NUM_ELEMS; i++) {
			if (vals[i] >= 128) {
				sum += vals[i];
			}
		}
	}
	clock_t end = clock();
	printf("Time taken: %Lf s\n", (long double)(end - start) / CLOCKS_PER_SEC);
	return sum;
}

long long int sum_simd(int vals[NUM_ELEMS]) {
	clock_t start = clock();
	__m128i _127 = _mm_set1_epi32(127);		// This is a vector with 127s in it... Why might you need this?
	long long int result = 0;				   // This is where you should put your final result!
	/* DO NOT DO NOT DO NOT DO NOT WRITE ANYTHING ABOVE THIS LINE. */
    

	for(unsigned int w = 0; w < OUTER_ITERATIONS; w++) {
        __m128i sum_vec;  // Vector to hold the sum
        sum_vec = _mm_setzero_si128(); 
        for(unsigned int i = 0; i < NUM_ELEMS / 4 * 4; i += 4) {
            __m128i vals_vec = _mm_loadu_si128((__m128i*)&vals[i]); // Load 4 integers
            __m128i mask = _mm_cmpgt_epi32(vals_vec, _127); // Compare with 127
            __m128i filtered_vals = _mm_and_si128(vals_vec, mask); // Zero out values < 128
            sum_vec = _mm_add_epi32(sum_vec, filtered_vals); // Accumulate sum
        }

        // Horizontal sum of sum_vec
        int temp[4];
        _mm_storeu_si128((__m128i*)temp, sum_vec);
        result += temp[0] + temp[1] + temp[2] + temp[3];

        // Handle tail case
        for(unsigned int i = NUM_ELEMS / 4 * 4; i < NUM_ELEMS; i++) {
            if (vals[i] >= 128) {
                result += vals[i];
            }
        }
    }


	clock_t end = clock();
	printf("Time taken: %Lf s\n", (long double)(end - start) / CLOCKS_PER_SEC);
	return result;
}

long long int sum_simd_unrolled(int vals[NUM_ELEMS]) {
	clock_t start = clock();
	__m128i _127 = _mm_set1_epi32(127);
	long long int result = 0;

    __m128i sum_vec1, sum_vec2, sum_vec3, sum_vec4;
	for(unsigned int w = 0; w < OUTER_ITERATIONS; w++) {
        sum_vec1 = _mm_setzero_si128();  // Vector to hold the sum
        sum_vec2 = _mm_setzero_si128();  // Vector to hold the sum
        sum_vec3= _mm_setzero_si128();  // Vector to hold the sum
        sum_vec4= _mm_setzero_si128();  // Vector to hold the sum

        for (unsigned int i = 0; i < NUM_ELEMS / 16 * 16; i += 16) {
            // Unroll by a factor of 4
            __m128i vals_vec1 = _mm_loadu_si128((__m128i*)&vals[i + 4]); // Load 4 integers
            __m128i mask1 = _mm_cmpgt_epi32(vals_vec1, _127); // Compare with 127
            __m128i filtered_vals1 = _mm_and_si128(vals_vec1, mask1); // Zero out values < 128
            sum_vec1 = _mm_add_epi32(sum_vec1, filtered_vals1); // Accumulate sum

            __m128i vals_vec2 = _mm_loadu_si128((__m128i*)&vals[i + 8]); // Load 4 integers
            __m128i mask2 = _mm_cmpgt_epi32(vals_vec2, _127); // Compare with 127
            __m128i filtered_vals2 = _mm_and_si128(vals_vec2, mask2); // Zero out values < 128
            sum_vec2 = _mm_add_epi32(sum_vec2, filtered_vals2); // Accumulate sum

            __m128i vals_vec3 = _mm_loadu_si128((__m128i*)&vals[i + 12]); // Load 4 integers
            __m128i mask3 = _mm_cmpgt_epi32(vals_vec3, _127); // Compare with 127
            __m128i filtered_vals3 = _mm_and_si128(vals_vec3, mask3); // Zero out values < 128
            sum_vec3 = _mm_add_epi32(sum_vec3, filtered_vals3); // Accumulate sum

            __m128i vals_vec4 = _mm_loadu_si128((__m128i*)&vals[i]); // Load 4 integers
            __m128i mask4 = _mm_cmpgt_epi32(vals_vec4, _127); // Compare with 127
            __m128i filtered_vals4 = _mm_and_si128(vals_vec4, mask4); // Zero out values < 128
            sum_vec4 = _mm_add_epi32(sum_vec4, filtered_vals4); // Accumulate sum
        }
		/* You'll need 1 or maybe 2 tail cases here. */
        for(unsigned int i = NUM_ELEMS / 16 * 16; i < NUM_ELEMS / 4 * 4; i+=4) {
            __m128i vals_vec = _mm_loadu_si128((__m128i*)&vals[i]); // Load 4 integers
            __m128i mask = _mm_cmpgt_epi32(vals_vec, _127); // Compare with 127
            __m128i filtered_vals = _mm_and_si128(vals_vec, mask); // Zero out values < 128
            sum_vec1 = _mm_add_epi32(sum_vec1, filtered_vals); // Accumulate sum
        }

        // Horizontal sum of sum_vec
        sum_vec1 = _mm_add_epi32(sum_vec1, sum_vec2);
        sum_vec1 = _mm_add_epi32(sum_vec1, sum_vec3);
        sum_vec1 = _mm_add_epi32(sum_vec1, sum_vec4);
        int temp[4];
        _mm_storeu_si128((__m128i*)temp, sum_vec1);
        result += temp[0] + temp[1] + temp[2] + temp[3];

        for (unsigned int i = NUM_ELEMS / 4 * 4; i < NUM_ELEMS; i++) {
            if (vals[i] >= 128) {
                result += vals[i];
            }
        }

	}
	clock_t end = clock();
	printf("Time taken: %Lf s\n", (long double)(end - start) / CLOCKS_PER_SEC);
	return result;
}
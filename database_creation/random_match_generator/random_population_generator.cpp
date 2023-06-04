#include <stdio.h>
#include <math.h>
#include <vector>

#include "table_constants.h"

std::vector<std::pair<int, int>> matches;

void printQuery() {
	printf("INSERT INTO %s(%s, %s)", tableName, columnName1, columnName2);
	puts("VALUES\n");
	
	int noMatches = matches.size() - 1;
	for (int i = 0; i < noMatches; i++) {
		int f = matches[i].first, s = matches[i].second;
		char lim = (i == noMatches - 1 ? ';' : ',');
		printf("       (%2d, %2d)%c\n", f, s, lim);
	}
}

int main() {
	freopen("table_matches.sql", "w", stdout);
	
	matches.clear();
	for (int i = 0; i < noValues1; i++) {
		for (int j = 0; j < noValues2; j++) {
			int r = rand() % RANDOM_MOD;
			bool isMatch = r < RANDOM_SUCCESS;
			
			if (isMatch) {
				matches.push_back({i+1, j+1});
			}
		}
	}	
	printQuery();
}

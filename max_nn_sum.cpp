#include <iostream>
#include <fstream>
#include <vector>
#include <string>

using namespace std;

int main(){
    int n_test_cases;
    cin >> n_test_cases;

    for(int test_case = 0; test_case < n_test_cases; test_case++){
        int n_elements;
        int max, max_index;
        cin >> n_elements;

        vector<int> elements;
        vector<int> scores;
        vector<int> status;

        elements.reserve(n_elements);
        scores.reserve(n_elements);
        status.reserve(n_elements);

        for(int i = 0; i < n_elements; i++){
            int ele;
            cin >> ele;

            elements.push_back(ele);
        }

        for(int i = 0; i < n_elements; i++){
            cout << elements[i] << "\t";
        }
        cout << endl;

        // Assign scores and status
        status[0] = 0;
        scores[0] = elements[0];
        if (elements[1] > 0) {
            scores[0] -= elements[1];
        }
        for(int i = 1; i < n_elements-1; i++){
            status[i] = 0;
            scores[i] = elements[i];
            if (elements[i-1] > 0) {
                scores[i] -= elements[i-1];
            }
            if (elements[i+1] > 0) {
                scores[i] -= elements[i+1];
            }
        }
        status[n_elements-1] = 0;
        scores[n_elements-1] = elements[n_elements-1];
        if (elements[n_elements-2] > 0) {
            scores[n_elements-1] -= elements[n_elements-2];
        }

        for(int i = 0; i < n_elements; i++){
            cout << scores[i] << "\t";
        }
        cout << endl;

        // Find max
        max = scores[n_elements-1];
        max_index = n_elements-1;
        for(int i = n_elements-2; i >= 0; i--){
            if (scores[i] >= max) {
                max = scores[i];
                max_index = i;
            }
        }

        // Marking max
        status[max_index] = 2;
        if (max_index > 0) status[max_index-1] = 1;
        if (max_index < n_elements-1) status[max_index+1] = 1;

        // Subsequent elements
        while(true){
            int i;
            for(i = n_elements-1; i >= 0; i--){
                if (status[i] == 0){
                    max = scores[i];
                    max_index = i;
                    break;
                }
            }
            if (i == -1) {
                // All elements processed. Stop.
                break;
            }
            for(int i = n_elements-1; i >= 0; i--){
                if ((scores[i] >= max) && (status[i] == 0)) {
                    max = scores[i];
                    max_index = i;
                }
            }
            if (elements[max_index] <= 0) {
                // Adding negative or 0 element doesn't make sense
                break;
            }
            status[max_index] = 2;
            if (max_index > 0) status[max_index-1] = 1;
            if (max_index < n_elements-1) status[max_index+1] = 1;
        }

        for(int i = 0; i < n_elements; i++){
            cout << status[i] << "\t";
        }
        cout << endl;

        // Print the sublist
        for(int i = n_elements-1; i >= 0; i--){
            if (status[i] == 2) {
                cout << elements[i];
            }
        }
        cout << endl;

        elements.clear();
        scores.clear();
        status.clear();
    }
}
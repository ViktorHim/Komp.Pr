#include <iostream>
#include <string>
using namespace std;

string inputString() {
    string str;
    getline(cin, str);
    return str;
}

void outputString(string str) {
    cout << str << endl;
}

int main() {
    string str = inputString();
    outputString(str);
    for (int i = 0; i < str.size(); i++) {
        if (!isalpha(str[i])) {
            str.erase(i, 1);
            i--;
        }
    }

    outputString(str);
    return 0;
}

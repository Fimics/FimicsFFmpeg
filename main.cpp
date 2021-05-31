#include <iostream>
extern "C" {
#include<libavdevice/avdevice.h>
}

using namespace std;
int main() {
    std::cout << "Hello, World!" << std::endl;
    cout << "avdevice_license-->" << avdevice_license() << endl;
    cout << "avcodec_configuration-->" << avcodec_configuration() << endl;
    return 0;
}

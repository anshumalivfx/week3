#include <bits/stdc++.h>
using namespace std;
class comp {
 
public:
    bool operator()(pair<int, int> a,
                    pair<int, int> b)
    {
        int x1 = a.first * a.first;
        int y1 = a.second * a.second;
        int x2 = b.first * b.first;
        int y2 = b.second * b.second;
        return (x1 + y1) > (x2 + y2);
    }
};
void kClosestPoints(int x[], int y[],
                    int n, int k)
{
    priority_queue<pair<int, int>,
                   vector<pair<int, int> >,
                   comp>
        pq;
        for (int i = 0; i < n; i++) {
            pq.push(make_pair(x[i], y[i]));
        }
        for (int i = 0; i < k; i++) {
        pair<int, int> p = pq.top();

        cout << p.first << " "
             << p.second << endl;

        pq.pop();
    }
}



int main()
{
    int x[] = { 1, -2 };

    int y[] = { 3, 2 };
    int K = 1;
 
    int n = sizeof(x) / sizeof(x[0]);
 
    kClosestPoints(x, y, n, K);
    return 0;
}
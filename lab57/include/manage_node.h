#ifndef MANAGE_NODE_H
#define MANAGE_NODE_H

#include <zmq.hpp>
#include <string> // ???????? ???? ???????????? ????
#include "msg.h"
#include "tree.hpp"

// ??????????? ???????????? ???? std
using namespace std;

// ?????, ??????????? ?????????/?????????? ????????? (PUB/SUB)
class Manage_node {
private:
    zmq::context_t context;
    zmq::socket_t publisher; // PUB
    zmq::socket_t sub;       // SUB

public:
    Manage_node();
    ~Manage_node();

    void receive_msg(Message_type msg_type, tree &tree);
    bool send_msg(Message msg);

    // ????? ????? ??? ????????? ??????
    void receive_reply(zmq::message_t &reply) {
        sub.recv(reply);
    }
};

#endif // MANAGE_NODE_H
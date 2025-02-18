#pragma once
#include <iostream>
#include <vector>
#include <queue>

using namespace std;

// ???? ??????
struct node {
    int ID;
    bool available = false;  // ???? ??????????? ????
    node* child = nullptr;   // ????????? ?? ??????? ???????
    node* sibling = nullptr; // ????????? ?? ?????????? "?????"
};

// ????? ??????
class tree {
private:
    node* root = nullptr; // ?????? ??????
    int node_cnt = 0;     // ?????????? ?????

    // ????? ???? ?? ID (????? ? ??????)
    node* find_node(node* current, int ID) {
        if (!current) return nullptr;
        if (current->ID == ID) return current;
        node* found = find_node(current->child, ID);
        if (found) return found;
        return find_node(current->sibling, ID);
    }

    // ????? ???????? ????
    int find_parent_id(node* current, int child_id) {
        if (!current) return -1;
        if (current->child && current->child->ID == child_id) return current->ID;
        if (current->sibling && current->sibling->ID == child_id) return current->ID;
        int parent_id = find_parent_id(current->child, child_id);
        if (parent_id != -1) return parent_id;
        return find_parent_id(current->sibling, child_id);
    }

public:
    tree() : root(nullptr), node_cnt(0) {}
    ~tree() {
        delete_tree(root);
    }

    // ??????????? ???????? ??????
    void delete_tree(node* current) {
        if (!current) return;
        delete_tree(current->child);
        delete_tree(current->sibling);
        delete current;
    }

    // ??????? ?????? ????
    bool insert(int ID, int parent_id = -1) {
        if (find_node(root, ID)) return false; // ???? ??? ??????????
        node* new_node = new node{ID};
        if (parent_id == -1) {
            if (!root) {
                root = new_node;
            } else {
                node* last_child = root->child;
                if (!last_child) {
                    root->child = new_node;
                } else {
                    while (last_child->sibling) {
                        last_child = last_child->sibling;
                    }
                    last_child->sibling = new_node;
                }
            }
        } else {
            node* parent = find_node(root, parent_id);
            if (!parent) return false; // ???????? ?? ??????
            if (!parent->child) {
                parent->child = new_node;
            } else {
                node* last_child = parent->child;
                while (last_child->sibling) {
                    last_child = last_child->sibling;
                }
                last_child->sibling = new_node;
            }
        }
        node_cnt++;
        return true;
    }

    // ????? ???? ?? ID
    node* get(int ID) {
        return find_node(root, ID);
    }

    // ????????, ?????????? ?? ????
    bool is_in_tree(int ID) {
        return find_node(root, ID) != nullptr;
    }

    // ???????? ??????????? ????
    bool is_available(int ID) {
        node* n = get(ID);
        return n ? n->available : false;
    }

    // ????????? ??????????? ????
    void change_availability(int ID, bool status) {
        node* n = get(ID);
        if (n) n->available = status;
    }

    // ????????? ????? ??????
    node* get_root() {
        return root;
    }

    // ????? ???????? ????
    int parent_id(int child_id) {
        return find_parent_id(root, child_id);
    }

    // ?????????? ?????
    int cnt() {
        return node_cnt;
    }

    // ???????????? ??????
    void draw_tree() {
        draw_subtree(root, 0);
    }

private:
    // ??????????? ????? ??????
    void draw_subtree(node* current, int level) {
        if (!current) return;
        for (int i = 0; i < level; ++i) cout << "  ";
        cout << current->ID << (current->available ? "(+)" : "(-)") << endl;
        draw_subtree(current->child, level + 1);
        draw_subtree(current->sibling, level);
    }
};
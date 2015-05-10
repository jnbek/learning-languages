#include <iostream>
#include <istream>
#include <ostream>
#include <cstdio>
#include <string>

#include <libsoup/soup.h>

int main(int argc, char **argv) {
    //g_type_init();
    SoupSession *session = soup_session_sync_new();
    SoupMessage *msg = soup_message_new ("GET", "https://svnweb.freebsd.org/ports/head/security/vuxml/vuln.xml?view=co");
    soup_session_send_message (session, msg);
    fwrite (msg->response_body->data, 1, msg->response_body->length, stdout);
    return 1;
}

import 'package:flutter_hbb/common/widgets/peers_view.dart';
import 'package:flutter_hbb/models/peer_model.dart';
import 'package:flutter_test/flutter_test.dart';

Peer createPeer() {
  return Peer(
    id: '123456789',
    hash: '',
    password: '',
    username: '',
    hostname: '',
    platform: '',
    alias: '',
    tags: [],
    forceAlwaysRelay: false,
    rdpPort: '',
    rdpUsername: '',
    loginName: '',
    device_group_name: '',
    note: '',
  );
}

void main() {
  test('accessible devices hides an offline peer', () {
    expect(MyGroupPeerView.filter(createPeer()), isFalse);
  });
}

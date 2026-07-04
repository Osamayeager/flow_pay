class Contact {
  final String id;
  final String name;
  final String avatarPath;
  final String handle;

  const Contact({
    required this.id,
    required this.name,
    required this.avatarPath,
    required this.handle,
  });

  static List<Contact> get dummyContacts => [
        const Contact(
          id: '1',
          name: 'Alex Rivera',
          avatarPath: 'assets/images/avatar1.png',
          handle: '@alex_r',
        ),
        const Contact(
          id: '2',
          name: 'Elena Rostova',
          avatarPath: 'assets/images/avatar2.png',
          handle: '@elena_pay',
        ),
        const Contact(
          id: '3',
          name: 'Marcus Chen',
          avatarPath: 'assets/images/avatar3.png',
          handle: '@marcus_c',
        ),
        const Contact(
          id: '4',
          name: 'Sophia Smith',
          avatarPath: 'assets/images/avatar4.png',
          handle: '@sophia_s',
        ),
        const Contact(
          id: '5',
          name: 'David Kim',
          avatarPath: 'assets/images/avatar5.png',
          handle: '@david_k',
        ),
      ];
}

class Contact {
  final String id;
  final String name;
  final String avatarUrl;
  final String handle;

  const Contact({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.handle,
  });

  static List<Contact> get dummyContacts => [
        const Contact(
          id: '1',
          name: 'Alex Rivera',
          avatarUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=200&q=80',
          handle: '@alex_r',
        ),
        const Contact(
          id: '2',
          name: 'Elena Rostova',
          avatarUrl: 'https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&fit=crop&w=200&q=80',
          handle: '@elena_pay',
        ),
        const Contact(
          id: '3',
          name: 'Marcus Chen',
          avatarUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=200&q=80',
          handle: '@marcus_c',
        ),
        const Contact(
          id: '4',
          name: 'Sophia Smith',
          avatarUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=200&q=80',
          handle: '@sophia_s',
        ),
        const Contact(
          id: '5',
          name: 'David Kim',
          avatarUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=200&q=80',
          handle: '@david_k',
        ),
      ];
}

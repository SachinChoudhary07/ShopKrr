import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:shopkrr/provider/notification_provider.dart';
import 'package:shopkrr/provider/notification_provider/notification_provider.dart'; // Import the provider

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Notifications'),
        actions: [
          Consumer<NotificationProvider>(
            builder: (context, provider, _) {
              if (provider.selectedIndices.isNotEmpty) {
                return TextButton(
                  onPressed: () {
                    // Mark selected notifications as read
                    provider.clearSelected();
                  },
                  child: const Text(
                    "Mark as Read",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }
              return Container();
            },
          ),
        ],
      ),
      body: Consumer<NotificationProvider>(
        builder: (context, provider, _) {
          return ListView.builder(
            itemCount: provider.notifications.length,
            itemBuilder: (context, index) {
              final notification = provider.notifications[index];
              final isSelected = provider.selectedIndices.contains(index);

              return GestureDetector(
                onLongPress: () {
                  provider.toggleSelection(index); // Toggle selection
                },
                child: Container(
                  color: isSelected
                      ? Colors.orange[100]
                      : Theme.of(context)
                          .colorScheme
                          .primary, // Highlight if selected
                  child: ListTile(
                    leading: Icon(Icons.notifications,
                        color: Theme.of(context).colorScheme.secondary),
                    title: Text(
                      notification["title"]!,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface),
                    ),
                    subtitle: Text(
                      notification["subtitle"]!,
                      style: TextStyle(
                          color: isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface),
                    ),
                    trailing: Text(
                      notification["time"]!,
                      style: TextStyle(
                          color: isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Consumer<NotificationProvider>(
        builder: (context, provider, _) {
          if (provider.selectedIndices.isNotEmpty) {
            return Container(
              padding: const EdgeInsets.all(10),
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Selected Notifications',
                    style: TextStyle(color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      provider.clearSelected();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Mark As Read',
                        style: TextStyle(color: Colors.orange)),
                  ),
                ],
              ),
            );
          }
          return const SizedBox
              .shrink(); // If nothing is selected, no bottom bar
        },
      ),
    );
  }
}

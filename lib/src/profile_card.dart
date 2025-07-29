import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String title;
  final String? avatarUrl;
  final String? email;
  final String? phone;
  final String? website;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final BoxShadow? shadow;

  const ProfileCard({
    super.key,
    required this.name,
    required this.title,
    this.avatarUrl,
    this.email,
    this.phone,
    this.website,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultBackgroundColor = backgroundColor ?? theme.cardColor;
    final defaultTextColor = textColor ?? theme.textTheme.bodyLarge?.color ?? Colors.black;
    final defaultPadding = padding ?? const EdgeInsets.all(16.0);
    final defaultBorderRadius = borderRadius ?? BorderRadius.circular(12.0);
    final defaultShadow = shadow ?? BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 8,
      offset: const Offset(0, 2),
    );

    return Container(
      width: width,
      height: height,
      padding: defaultPadding,
      decoration: BoxDecoration(
        color: defaultBackgroundColor,
        borderRadius: defaultBorderRadius,
        boxShadow: [defaultShadow],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Avatar
          if (avatarUrl != null)
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(avatarUrl!),
              onBackgroundImageError: (exception, stackTrace) {
                // Handle image loading error
              },
            )
          else
            CircleAvatar(
              radius: 50,
              backgroundColor: defaultTextColor.withOpacity(0.1),
              child: Icon(
                Icons.person,
                size: 50,
                color: defaultTextColor,
              ),
            ),
          
          const SizedBox(height: 16),
          
          // Name
          Text(
            name,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: defaultTextColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 8),
          
          // Title
          Text(
            title,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: defaultTextColor.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
          
          if (email != null || phone != null || website != null) ...[
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
          ],
          
          // Contact Information
          if (email != null)
            _buildContactItem(Icons.email, email!, defaultTextColor),
          
          if (phone != null)
            _buildContactItem(Icons.phone, phone!, defaultTextColor),
          
          if (website != null)
            _buildContactItem(Icons.language, website!, defaultTextColor),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text, Color textColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 16,
            color: textColor.withOpacity(0.7),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: textColor.withOpacity(0.8),
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

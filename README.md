# Profile Card Pub

A customizable Flutter widget for displaying user profile information in an elegant card format.

## Features

- **Customizable Design**: Adjust colors, padding, borders, and shadows
- **Avatar Support**: Display profile images or fallback to default icon
- **Contact Information**: Show email, phone, and website with icons
- **Responsive Layout**: Adapts to different screen sizes
- **Theme Integration**: Automatically uses your app's theme colors
- **Flexible Sizing**: Customizable width and height

## Getting started

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  profile_card_pub: ^0.1.0
```

Then run:
```bash
flutter pub get
```

## Usage

### Basic Usage

```dart
import 'package:profile_card_pub/profile_card_pub.dart';

// Simple profile card
ProfileCardWidget(
  name: "John Doe",
  title: "Software Developer",
)
```

### Advanced Usage

```dart
ProfileCardWidget(
  name: "Jane Smith",
  title: "UI/UX Designer",
  avatarUrl: "https://example.com/avatar.jpg",
  email: "jane.smith@example.com",
  phone: "+1 (555) 123-4567",
  website: "https://janesmith.com",
  backgroundColor: Colors.blue[50],
  textColor: Colors.blue[900],
  width: 300,
  padding: EdgeInsets.all(20),
  borderRadius: BorderRadius.circular(16),
)
```

### Custom Styling

```dart
ProfileCardWidget(
  name: "Alex Johnson",
  title: "Product Manager",
  email: "alex@company.com",
  backgroundColor: Colors.grey[100],
  textColor: Colors.grey[800],
  shadow: BoxShadow(
    color: Colors.black.withOpacity(0.2),
    blurRadius: 12,
    offset: Offset(0, 4),
  ),
)
```

## Widget Properties

| Property | Type | Required | Description |
|----------|------|----------|-------------|
| `name` | String | Yes | The person's full name |
| `title` | String | Yes | The person's job title or role |
| `avatarUrl` | String? | No | URL for profile image |
| `email` | String? | No | Email address |
| `phone` | String? | No | Phone number |
| `website` | String? | No | Website URL |
| `backgroundColor` | Color? | No | Card background color |
| `textColor` | Color? | No | Text color |
| `width` | double? | No | Card width |
| `height` | double? | No | Card height |
| `padding` | EdgeInsetsGeometry? | No | Internal padding |
| `borderRadius` | BorderRadius? | No | Card corner radius |
| `shadow` | BoxShadow? | No | Card shadow |

## Additional information

This package is designed for demo purposes and provides a simple, reusable profile card widget for Flutter applications. The widget automatically adapts to your app's theme and provides sensible defaults while allowing extensive customization.

For issues, feature requests, or contributions, please visit the package repository.

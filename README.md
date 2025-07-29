# Profile Card Pub

A professional Flutter widget for displaying user profile information in a clean, modern card format with customizable colors.

## Features

- **Professional Design**: Clean, modern single-style card layout
- **Customizable Colors**: Set your own background and text colors
- **Avatar Support**: Display profile images or elegant default icon
- **Contact Information**: Show email, phone, and website with professional icons
- **Responsive Layout**: Adapts to different screen sizes
- **Theme Integration**: Automatically uses your app's theme colors
- **Consistent Styling**: Professional appearance with subtle shadows and borders

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

// Simple profile card with default styling
ProfileCardWidget(
  name: "John Doe",
  title: "Software Developer",
)
```

### Custom Colors

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
)
```

### Dark Theme Example

```dart
ProfileCardWidget(
  name: "Alex Johnson",
  title: "Product Manager",
  email: "alex@company.com",
  backgroundColor: Colors.grey[900],
  textColor: Colors.white,
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
| `backgroundColor` | Color? | No | Card background color (defaults to theme) |
| `textColor` | Color? | No | Primary text color (defaults to theme) |
| `width` | double? | No | Card width (defaults to 320) |
| `height` | double? | No | Card height (auto-sized by default) |

## Design Features

- **Professional Typography**: Optimized font sizes and weights
- **Subtle Shadows**: Elegant drop shadow for depth
- **Rounded Corners**: Modern 16px border radius
- **Avatar Border**: Subtle border around profile images
- **Contact Section**: Highlighted contact information area
- **Consistent Spacing**: Professional padding and margins

## Additional information

This package provides a professional, single-style profile card widget designed for modern Flutter applications. The widget maintains a consistent, elegant appearance while allowing customization of background and text colors to match your app's design.

For issues, feature requests, or contributions, please visit the package repository.

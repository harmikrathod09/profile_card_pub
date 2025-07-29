# Profile Card Pub

A professional Flutter widget for displaying user profile information in a clean, modern card format with customizable colors.

## ✨ Features

- **Professional Design**: Clean, modern single-style card layout
- **Customizable Colors**: Set your own background and text colors
- **Avatar Support**: Display profile images or elegant default icon
- **Contact Information**: Show email, phone, and website with professional icons
- **Responsive Layout**: Adapts to different screen sizes
- **Theme Integration**: Automatically uses your app's theme colors
- **Consistent Styling**: Professional appearance with subtle shadows and borders

## 🚀 Getting Started

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  profile_card_pub: ^0.1.2
```

Then run:
```bash
flutter pub get
```

## 📱 Usage

### Basic Usage

```dart
import 'package:profile_card_pub/profile_card_pub.dart';

// Simple profile card with default styling
ProfileCardWidget(
  name: "John Doe",
  title: "Software Developer",
)
```

### With Contact Information

```dart
ProfileCardWidget(
  name: "Jane Smith",
  title: "UI/UX Designer",
  avatarUrl: "https://example.com/avatar.jpg",
  email: "jane.smith@example.com",
  phone: "+1 (555) 123-4567",
  website: "https://janesmith.com",
)
```

### Custom Colors

```dart
ProfileCardWidget(
  name: "Alex Johnson",
  title: "Product Manager",
  email: "alex@company.com",
  backgroundColor: Colors.blue[50],
  textColor: Colors.blue[900],
)
```

### Dark Theme

```dart
ProfileCardWidget(
  name: "Sarah Wilson",
  title: "Frontend Developer",
  email: "sarah@company.com",
  phone: "+1 (555) 987-6543",
  backgroundColor: Colors.grey[900],
  textColor: Colors.white,
)
```

### Custom Width

```dart
ProfileCardWidget(
  name: "Mike Chen",
  title: "Backend Engineer",
  email: "mike@company.com",
  width: 400, // Custom width
)
```

## 🎨 Widget Properties

| Property | Type | Required | Default | Description |
|----------|------|----------|---------|-------------|
| `name` | String | ✅ Yes | - | The person's full name |
| `title` | String | ✅ Yes | - | The person's job title or role |
| `avatarUrl` | String? | ❌ No | null | URL for profile image |
| `email` | String? | ❌ No | null | Email address |
| `phone` | String? | ❌ No | null | Phone number |
| `website` | String? | ❌ No | null | Website URL |
| `backgroundColor` | Color? | ❌ No | Theme card color | Card background color |
| `textColor` | Color? | ❌ No | Theme text color | Primary text color |
| `width` | double? | ❌ No | 320 | Card width in pixels |
| `height` | double? | ❌ No | auto | Card height (auto-sized) |

## 🎯 Design Features

- **Professional Typography**: Optimized font sizes and weights for readability
- **Subtle Shadows**: Elegant drop shadow for depth and modern feel
- **Rounded Corners**: Modern 16px border radius for soft appearance
- **Avatar Border**: Subtle border around profile images for elegance
- **Contact Section**: Highlighted background for contact information
- **Consistent Spacing**: Professional padding and margins throughout
- **Color Hierarchy**: Smart opacity variations for text hierarchy
- **Responsive Design**: Adapts gracefully to different screen sizes

## 🎨 Color Customization

The widget automatically creates a color hierarchy based on your chosen text color:

- **Primary Text**: Full opacity for name and important text
- **Secondary Text**: 70% opacity for job title
- **Tertiary Text**: 60% opacity for contact information
- **Icons**: 70% opacity for professional appearance

## 📋 Examples

### Light Theme (Default)
```dart
ProfileCardWidget(
  name: "Emily Davis",
  title: "Mobile Developer",
  email: "emily@company.com",
)
```

### Blue Theme
```dart
ProfileCardWidget(
  name: "David Brown",
  title: "DevOps Engineer",
  backgroundColor: Colors.blue[50],
  textColor: Colors.blue[900],
  email: "david@company.com",
)
```

### Dark Theme
```dart
ProfileCardWidget(
  name: "Lisa Wang",
  title: "Data Scientist",
  backgroundColor: Colors.grey[900],
  textColor: Colors.white,
  email: "lisa@company.com",
)
```

## 🔧 Additional Information

This package provides a professional, single-style profile card widget designed for modern Flutter applications. The widget maintains a consistent, elegant appearance while allowing customization of background and text colors to match your app's design.

**Key Benefits:**
- ✅ **Consistent Design**: Single professional style across all cards
- ✅ **Easy Customization**: Simple color-based customization
- ✅ **Theme Integration**: Works seamlessly with your app's theme
- ✅ **Responsive**: Adapts to different screen sizes
- ✅ **Accessible**: Proper contrast and readable typography

For issues, feature requests, or contributions, please visit the package repository.

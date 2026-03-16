# swiftUi_weather

A simple SwiftUI weather demo that displays a 5-day forecast with a day/night toggle. Built with SwiftUI and SF Symbols.

## Preview
The main screen shows:
- A gradient background that changes with day/night state
- Current location title
- A large weather icon and temperature
- A horizontal list of daily forecasts
- A button to toggle between day and night appearances

## Features
- SwiftUI-based UI with a responsive layout
- Day/Night theme toggle using `@State`
- Uses SF Symbols for weather icons
- Example data rendered via a simple `WeatherModel`

## Project Structure
- `ContentView.swift`: Main view rendering the weather UI, gradient background, and toggle button.
- `WeatherModel`: Lightweight model representing a day's weather (day label, temperature, system icon).
- `toWeatherOfTheDay()`: Convenience view builder (likely an extension or method on `WeatherModel`) to render each day's forecast item.

Note: If you don't see `WeatherModel` or its view helper in the project, add them as needed (an example is provided below).

## Requirements
- Xcode 15+ (Swift 5.9+) recommended; works with newer Xcode versions as well.
- iOS 17+ target recommended for SwiftUI features and previews.

## Getting Started
1. Open the project in Xcode.
2. Build and run on the iOS Simulator or a device.
3. Tap "Change Day Time" to toggle between day and night themes.

## Customization
- Update the `weatherData` array in `ContentView.swift` to change the forecast items.
- Modify the gradient colors and icons to match your design.
- Replace the hardcoded location text with dynamic location if integrating with Core Location or a weather API.

## Example Model (if needed)
Below is a simple example of what `WeatherModel` could look like, along with a helper view for rendering a day's forecast. Use or adapt this if your project doesn't already define them.

```swift
import SwiftUI

struct WeatherModel: Hashable {
    let dayLabel: String
    let temperature: String
    let systemIcon: String
}

extension WeatherModel {
    @ViewBuilder
    func toWeatherOfTheDay() -> some View {
        VStack(spacing: 8) {
            Text(dayLabel)
                .font(.system(size: 16, weight: .medium, design: .monospaced))
                .foregroundColor(.white)
            Image(systemName: systemIcon)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 36, height: 28)
            Text(temperature)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
        }
    }
}

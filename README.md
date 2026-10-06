# Noble Finance: Flutter Landing Page
 
A responsive-minded finance landing page built from scratch in **Flutter**, with scroll-triggered animations and a clean, reusable widget structure.
 
> 🎬 **Demo:** _add your screen recording / GIF here_
> 🌐 **Live link:** _add link if you deploy it (optional)_
 
---
## 📸 Screenshots
 
_Add 2-3 screenshots here._
 
## ✨ Features
 
- **Scroll-triggered animations:** each section animates in only when it comes into view, using the `visibility_detector` package
- **Section-based architecture:** every section (Hero, Services, Testimonials, etc.) is its own widget
- **Custom-built UI:** cards, layouts, and components are all coded by hand, no UI kits
- **Clean green theme:** consistent colors and typography across the page
## 🧱 Sections
 
1. Hero
2. Services (Tax Preparation, IRS Audit Assistance, Bookkeeping & Accounting)
3. Client Testimonials
4. Smart Finance for Everyone (Freelancers, Families, Small Businesses)
5. Custom Plan / Call to Action
6. Footer CTA
## 🛠️ Tech Stack
 
- **Flutter** and **Dart**
- [`visibility_detector`](https://pub.dev/packages/visibility_detector) for triggering animations on scroll
- Flutter animation widgets: _list the ones you used, e.g. AnimatedOpacity, AnimatedSlide, TweenAnimationBuilder_
## 📁 Project Structure
 
```
lib/
├── main.dart          # Entry point; assembles all sections in a SingleChildScrollView
└── ...                # One widget per section (update this with your real file names)
```
 
## 🚀 Getting Started
 
```bash
# 1. Clone the repo
git clone https://github.com/<your-username>/<repo-name>.git
 
# 2. Go into the project
cd <repo-name>
 
# 3. Install dependencies
flutter pub get
 
# 4. Run it
flutter run
```
 
To run on the web:
 
```bash
flutter run -d chrome
```
 
## 🎯 What I Learned
 
- Structuring a long page into small, reusable widgets
- Triggering animations based on scroll position instead of on page load
- Building custom cards and layouts without relying on UI kits
## 🔮 Planned Improvements
 
- Make the layout fully responsive (mobile / tablet / desktop)
- Replace hardcoded spacing with a shared spacing/theme system
- Switch to lazy-loading scroll widgets for better performance
## 🙏 Credits
 
Design inspiration: _credit the original design/template here if you used one._
 
## 👤 Author
 
**Muhammad Hamza Hafeez**
🔗 LinkedIn: _(https://www.linkedin.com/in/muhammad-hamza-hafeez/)_
 
---
 
⭐ If you found this useful, feel free to star the repo, and feedback is always welcome!

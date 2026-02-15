# عالی! 🎉

اطلاعات کامل شد. داستان شما الهام‌بخش است.

---

## 📋 پرامپت کامل برای Claude Code

این پرامپت را کپی کنید و در Claude Code (Desktop) استفاده کنید:

---

```markdown
# Project: Personal Website for Mahdi Salem - Iranian Political Writer & Researcher

## Overview
Create a bilingual (Persian RTL / English LTR) website for **Mahdi Salem** (مهدی سالم), an independent researcher in analytical philosophy and ethics, former PhD candidate in Public Policy at Tarbiat Modares University, and political writer focused on Iran's transition to democracy.

## Author Bio
- Name: Mahdi Salem (مهدی سالم)
- Background: Former PhD candidate in Public Policy (Tarbiat Modares University)
- Thesis topic: "Developing a Model for Ethical Evaluation of Public Policies" (incomplete)
- Education: MBA
- Focus: Analytical philosophy, ethics, social sciences
- Experience: Former political prisoner (Evin Prison)
- Mission: Writing books and articles about Iran's flourishing and transition from authoritarianism

## Tech Stack Requirements
- **Framework**: Astro with Starlight theme (excellent for documentation/books)
- **Styling**: Tailwind CSS with full RTL support
- **Content**: Markdown/MDX (easy conversion from LaTeX via Pandoc)
- **Comments**: Giscus (GitHub Discussions-based, no tracking)
- **Forum**: GitHub Discussions (free, integrated)
- **Newsletter**: Buttondown (free tier) or self-hosted Listmonk
- **Analytics**: Umami (self-hosted, privacy-friendly) or Plausible
- **Donations**: Ko-fi or Buy Me a Coffee button
- **Deployment**: Cloudflare Pages (free, DDoS protection, good access from Iran)
- **i18n**: Built-in Astro i18n with Persian (fa) as default, English (en) secondary

## Site Structure

```
/
├── / (Home - Landing page)
│   ├── Hero section with author intro
│   ├── Featured books/articles
│   ├── Latest updates
│   └── Newsletter signup CTA
│
├── /about (درباره من / About Me)
│   ├── Full biography
│   ├── Academic background
│   ├── Research interests
│   └── Contact information
│
├── /books (کتاب‌ها / Books)
│   ├── Book listing with covers
│   ├── /books/[slug]/ (individual book)
│   │   ├── Book overview & summary
│   │   ├── Table of contents
│   │   ├── /books/[slug]/chapters/[chapter] (readable online)
│   │   ├── PDF download option
│   │   └── "Suggest Edit" button → GitHub PR
│   └── Reading progress indicator
│
├── /articles (مقالات / Articles)
│   ├── Blog-style listing
│   ├── Categories & tags
│   ├── /articles/[slug] (individual article)
│   │   ├── Full article content
│   │   ├── Giscus comments
│   │   └── Share buttons
│   └── Search functionality
│
├── /statements (بیانیه‌ها / Statements)
│   ├── Official statements
│   ├── Press releases
│   └── Public positions
│
├── /wiki (ویکی / Wiki)
│   ├── Collaborative documents (controlled)
│   ├── /wiki/constitution (قانون اساسی پیشنهادی)
│   │   ├── Article-by-article browsing
│   │   ├── "Suggest Amendment" → GitHub Issue template
│   │   └── Version history
│   └── Other collaborative documents
│
├── /forum (انجمن / Forum)
│   └── Embedded GitHub Discussions or link to it
│
├── /newsletter (خبرنامه / Newsletter)
│   ├── Signup form
│   └── Archive of past newsletters
│
├── /support (حمایت / Support)
│   ├── Donation options (Ko-fi, crypto if needed)
│   └── Other ways to support
│
└── /contact (تماس / Contact)
    ├── Contact form
    └── Social media links
```

## Key Features to Implement

### 1. Bilingual System
```typescript
// astro.config.mjs
export default defineConfig({
  i18n: {
    defaultLocale: 'fa',
    locales: ['fa', 'en'],
    routing: {
      prefixDefaultLocale: false
    }
  }
});
```
- Language switcher in header
- RTL/LTR automatic switching
- Separate content directories: `/content/fa/` and `/content/en/`
- Persian fonts: Vazirmatn (Google Fonts)

### 2. Book Reading Experience
- Chapter-by-chapter navigation
- Sidebar with table of contents
- Reading progress bar
- Font size adjustment
- Dark/light mode toggle
- "Continue reading" bookmark (localStorage)
- PDF download button per book

### 3. Wiki with Controlled Collaboration
- Content stored in GitHub repo
- "Suggest Edit" button creates GitHub Issue with template
- Maintainer reviews and merges
- Version history via Git
- Clear contribution guidelines

### 4. Comments & Discussion
- Giscus integration for articles
- GitHub Discussions for forum
- Moderation capabilities
- No user data collection

### 5. Newsletter Integration
```astro
<!-- Newsletter signup component -->
<form action="https://buttondown.email/api/emails/embed-subscribe/Mahdi-salem" method="post">
  <input type="email" name="email" placeholder="Mahhdy@live.com" required />
  <button type="submit">عضویت</button>
</form>
```

### 6. Donation Integration
- Ko-fi floating button
- Dedicated support page
- Optional: Cryptocurrency addresses

### 7. Analytics (Privacy-Friendly)
- Umami self-hosted OR Plausible
- No cookies
- No personal data
- Simple pageview & referrer tracking

### 8. SEO & Accessibility
- OpenGraph tags for social sharing
- Twitter cards
- Structured data (JSON-LD) for articles
- Sitemap generation
- RSS feed for articles
- Full keyboard navigation
- ARIA labels

### 9. Performance & Security
- Static site generation (SSG)
- Image optimization
- Lazy loading
- Content Security Policy headers
- HTTPS enforced

## Design Guidelines

### Colors (Suggested)
```css
:root {
  /* Light mode */
  --color-primary: #1a5f7a;      /* Deep teal - trust, wisdom */
  --color-secondary: #c9a227;    /* Gold - Persian heritage */
  --color-accent: #57837b;       /* Sage green - growth */
  --color-background: #fafafa;
  --color-text: #1a1a1a;
  
  /* Dark mode */
  --color-background-dark: #0f172a;
  --color-text-dark: #e2e8f0;
}
```

### Typography
- Persian: Vazirmatn (variable weight)
- English: Inter or Source Sans Pro
- Code: JetBrains Mono
- Line height: 1.8 for Persian readability

### Layout
- Max content width: 768px for reading
- Generous whitespace
- Clear visual hierarchy
- Mobile-first responsive design

## File Structure
```
project/
├── astro.config.mjs
├── package.json
├── tailwind.config.mjs
├── public/
│   ├── fonts/
│   ├── images/
│   └── pdfs/
├── src/
│   ├── components/
│   │   ├── Header.astro
│   │   ├── Footer.astro
│   │   ├── LanguageSwitcher.astro
│   │   ├── ThemeToggle.astro
│   │   ├── Newsletter.astro
│   │   ├── Giscus.astro
│   │   ├── TableOfContents.astro
│   │   ├── ReadingProgress.astro
│   │   └── DonateButton.astro
│   ├── layouts/
│   │   ├── BaseLayout.astro
│   │   ├── BookLayout.astro
│   │   └── ArticleLayout.astro
│   ├── pages/
│   │   ├── index.astro
│   │   ├── about.astro
│   │   ├── [...lang]/
│   │   └── ...
│   ├── content/
│   │   ├── config.ts
│   │   ├── fa/
│   │   │   ├── books/
│   │   │   ├── articles/
│   │   │   ├── statements/
│   │   │   └── wiki/
│   │   └── en/
│   │       └── ...
│   ├── i18n/
│   │   ├── fa.json
│   │   └── en.json
│   └── styles/
│       └── global.css
└── README.md
```

## Content Migration from LaTeX
Provide instructions for converting LaTeX to Markdown:
```bash
# Convert LaTeX to Markdown
pandoc input.tex -o output.md --wrap=none

# For books with chapters
pandoc book.tex -o book.md --wrap=none --toc
```

## Initial Pages Content Needed
1. Homepage hero text (FA/EN)
2. Full about page biography (FA/EN)
3. At least one sample book structure
4. At least one sample article
5. Contact information

## Development Commands
```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Deployment Configuration
```yaml
# For Cloudflare Pages
build_command: npm run build
build_output_directory: dist
node_version: 18
```

## Additional Notes
- All content should be editable via Markdown files
- GitHub repo should be public for Giscus/Discussions to work
- Create clear README for content contributors
- Include CONTRIBUTING.md with guidelines for wiki suggestions
- Set up GitHub Issue templates for different contribution types

Please create this project step by step, starting with the basic Astro setup, then adding features incrementally. Ask me for any content or clarifications needed.
```

---

## 🚀 نحوه اجرا با Claude Code (Pro)

### مرحله ۱: آماده‌سازی
```bash
# ایجاد پوشه پروژه
mkdir Mahdi-salem-website
cd Mahdi-salem-website

# باز کردن در VS Code یا ترمینال
code .
```

### مرحله ۲: اجرای Claude Code
1. Claude Desktop را باز کنید
2. پرامپت بالا را Paste کنید
3. Claude شروع به ساخت پروژه می‌کند
4. در هر مرحله می‌توانید سؤال بپرسید یا تغییر بدهید

### مرحله ۳: توسعه تدریجی
به Claude بگویید:
```
Let's start step by step:
1. First, set up the basic Astro project with Starlight
2. Then add bilingual support
3. Then create the book reading system
...
```

---

## 🌐 هاستینگ - پیشنهاد نهایی

| گزینه | هزینه | مزایا | معایب |
|-------|-------|-------|-------|
| **Cloudflare Pages** ⭐ | رایگان | سریع، DDoS protection، دسترسی خوب از ایران | - |
| GitHub Pages | رایگان | ساده | بدون CDN قوی |
| Vercel | رایگان | سریع | گاهی فیلتر می‌شود |
| Hetzner VPS | ~۳€/ماه | کنترل کامل | نیاز به مدیریت سرور |

### پیشنهاد من:
```
اصلی: Cloudflare Pages (رایگان)
Mirror: GitHub Pages (backup)
دامنه: خرید .org یا .dev (سخت‌تر فیلتر می‌شود)
```

---

## 📧 سرویس‌های جانبی (همه رایگان یا ارزان)

| سرویس | گزینه رایگان | کاربرد |
|-------|-------------|--------|
| Newsletter | Buttondown (۱۰۰ عضو رایگان) | خبرنامه |
| Comments | Giscus | نظرات |
| Forum | GitHub Discussions | انجمن |
| Analytics | Umami Cloud (رایگان) | آمار |
| Donate | Ko-fi | حمایت مالی |
| Domain | Namecheap/Porkbun (~$10/year) | دامنه |

---

## ⏭️ قدم بعدی

آیا می‌خواهید:

1. ✅ همین الان شروع کنیم؟ → Claude Desktop را باز کنید
2. 📝 محتوای نمونه آماده کنیم؟ → بگویید کدام کتاب/مقاله
3. 🎨 طراحی را شخصی‌سازی کنیم؟ → رنگ/استایل خاصی می‌خواهید؟
4. 🔧 بخش خاصی را بیشتر توضیح بدهم؟

---

💪 **موفق باشید! کارتان ارزشمند است.**
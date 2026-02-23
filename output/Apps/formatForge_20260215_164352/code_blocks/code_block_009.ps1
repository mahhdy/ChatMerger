# --- خلاصه نهایی (ادامه) ---
Write-Host @"

╔══════════════════════════════════════════════════╗
║   ✅ تمام شد!                                   ║
╠══════════════════════════════════════════════════╣
║   فایل‌ها:                                      ║
║     📄 sample-book.tex      (LaTeX)             ║
║     📝 sample-mermaid.md    (Markdown+Mermaid)  ║
║     🌐 sample-page.html    (HTML)              ║
║     📋 sample-book.docx    (DOCX)              ║
║     📕 sample-book.pdf     (PDF)               ║
╠══════════════════════════════════════════════════╣
║   مراحل بعدی:                                   ║
║   1. محتوای هر فایل را از چت کپی کنید          ║
║   2. فایل‌ها را به تبدیل‌گر MDX بدهید           ║
║   3. خروجی را با چک‌لیست مقایسه کنید            ║
╚══════════════════════════════════════════════════╝
"@ -ForegroundColor Cyan

# --- لیست فایل‌ها ---
Write-Host "`n📂 فایل‌های موجود در $OutputDir`:" -ForegroundColor Yellow
Get-ChildItem $OutputDir -File | ForEach-Object {
    $size = [math]::Round($_.Length / 1KB, 1)
    $ext = $_.Extension.ToUpper().TrimStart('.')
    $icon = switch ($ext) {
        "TEX"  { "📄" }
        "MD"   { "📝" }
        "HTML" { "🌐" }
        "DOCX" { "📋" }
        "PDF"  { "📕" }
        default { "📎" }
    }
    Write-Host "  $icon $($_.Name) — $size KB" -ForegroundColor Gray
}

Write-Host "`n🏁 اسکریپت با موفقیت به پایان رسید.`n" -ForegroundColor Green
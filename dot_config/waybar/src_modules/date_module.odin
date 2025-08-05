package date_module

import "core:c/libc"

main :: proc() {
	days := [7]string{"日", "月", "火", "水", "木", "金", "土"}

	now := libc.time(nil)
	tm := libc.localtime(&now)

	year := tm.tm_year + 1900
	month := tm.tm_mon + 1
	day := tm.tm_mday
	weekday := tm.tm_wday

	libc.printf("%d年%d月%d日 (%s)\n", year, month, day, days[weekday])
}


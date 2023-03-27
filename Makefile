.PHONY:readme
readme:
	@awk -i inplace -v q="\`\`\`" 'BEGIN {p=1} /^<!-- help start -->/{print;print "";print q"console";print "$$ rofi-ttv -h";system("./rofi-ttv -h | sed s'/\/home\/runner/~/g'");print q;print "";p=0} /^<!-- help end -->/{p=1} p' README.md

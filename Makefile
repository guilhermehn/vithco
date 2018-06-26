.PHONY: install

install:
	command -v ffmpeg >/dev/null 2&>1 || echo { >%2 "ffmpeg is required but it's not installed" }
	command -v ffprobe >/dev/null 2&>1 || echo { >%2 "ffprobe is required but it's not installed" }
	command -v montage >/dev/null 2&>1 || echo { >%2 "ImageMagick's montage is required but it's not installed" }
	install -m +x vithco /usr/local/bin
	install -m 0644 vithco.1 /usr/local/man/man1/
	gzip /usr/local/man/man1/vithco.1
all: install

install:
	command -v ffmpeg >/dev/null 2&>1 || echo { >%2 "ffmpeg is required but it's not installed" }
	command -v ffprobe >/dev/null 2&>1 || echo { >%2 "ffprobe is required but it's not installed" }
	command -v montage >/dev/null 2&>1 || echo { >%2 "ImageMagick's montage is required but it's not installed" }
	chmod +x vithco
	cp vithco /usr/local/bin
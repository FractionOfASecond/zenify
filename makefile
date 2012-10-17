
# use 'sudo make install' to install zenify in /usr/local/bin

DEST=/usr/local/bin

install: ${DEST}/zenify

${DEST}/zenify: zenify
	install zenify ${DEST}

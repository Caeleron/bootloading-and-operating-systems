all: copycat

copycat:
	nasm copycat.a

run: copycat
	qemu-system-x86_64 -enable-kvm -hda copycat

clean:
	rm copycat

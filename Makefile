AS=ca65
CC=cl65
LD=ld65
AR=ar65
CFLAGS=-ttelestrat
LDFILES=
LIB=soundLib
PATH_RELEASE=release/orix/lib8/6502/
PATH_RELEASE_INCLUDE=release/orix/usr/include/
INCLUDE_FILENAME=soundLib.h


all : build
.PHONY : all

HOMEDIR=/home/travis/bin/
HOMEDIR_ORIX=/home/travis/build/orix-software/$(LIB)/
ORIX_VERSION=1.0

SOURCE=src/sound_helicopter1.asm

TELESTRAT_TARGET_RELEASE=release/telestrat
MYDATE = $(shell date +"%Y-%m-%d %H:%m")
 



build: src/sound_helicopter1.asm
	@date +'.define __DATE__ "%F %R"' > src/build.inc
	mkdir -p $(PATH_RELEASE)
	mkdir -p $(PATH_RELEASE_INCLUDE)
	$(AS) $(CFLAGS) src/sound_helicopter2.asm
	$(AS) $(CFLAGS) src/sound_helicopter3.asm
	$(AS) $(CFLAGS) src/sound_car_engine.asm
	$(AS) $(CFLAGS) src/sound_electricity.asm
	$(AS) $(CFLAGS) src/sound_cockpit.asm	
	$(AS) $(CFLAGS) src/sound_plane1.asm
	$(AS) $(CFLAGS) src/sound_pong.asm	
	$(AS) $(CFLAGS) src/sound_pchh.asm	
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_helicopter1.o
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_helicopter2.o
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_helicopter3.o
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_car_engine.o
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_electricity.o	
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_cockpit.o		
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_plane1.o
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_pong.o	
	$(AR) a $(PATH_RELEASE)/sound.lib src/sound_pchh.o
	cp src/include/$(INCLUDE_FILENAME) $(PATH_RELEASE_INCLUDE)/$(INCLUDE_FILENAME)

doc:
	# echo hello doc
	sh tools/builddocs.sh

test:
	#xa tests/xrm.asm -o xrm
	#xa tests/xmkdir.asm -o xmkdir
	#cp src/include/orix.h build/usr/include/orix/
	#mkdir -p build/usr/src/orix-source-1.0/src/
	#cp Makefile build/usr/src/orix-source-1.0/
	#cp README.md build/usr/src/orix-source-1.0/
	#cp src/* build/usr/src/orix-source-1.0/src/ -adpR
	#cp README.md build/usr/share/doc/$(ORIX_ROM)/
	#ls -l $(HOMEDIR)
	#export ORIX_PATH=`pwd`
	#cd build && tar -c * > ../$(ORIX_ROM).tar &&	cd ..
	#filepack  $(ORIX_ROM).tar $(ORIX_ROM).pkg
	#gzip $(ORIX_ROM).tar
	#mv $(ORIX_ROM).tar.gz $(ORIX_ROM).tgz
	#php buildTestAndRelease/publish/publish2repo.php $(ORIX_ROM).pkg ${hash} 6502 pkg alpha
	#php buildTestAndRelease/publish/publish2repo.php $(ORIX_ROM).tgz ${hash} 6502 tgz alpha
	#php buildTestAndRelease/publish/publish2repo.php $(ORIX_ROM).pkg ${hash} 65c02 pkg alpha
	#php buildTestAndRelease/publish/publish2repo.php $(ORIX_ROM).tgz ${hash} 65c02 tgz alpha
  
  


  



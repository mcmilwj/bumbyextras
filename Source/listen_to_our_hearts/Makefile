#
# Standard Makefile for a hymn
#

#
# The following two variables are probably all that needs to be customized for any hymn
#
PROD_BASE_NAME = listen_to_our_hearts
STATUS = review
ACCESS = private

LIBRARY_DIR = ../../../LilypondTemplates
LIBRARY_FILES = $(LIBRARY_DIR)/functions.ly $(LIBRARY_DIR)/hymns.ly $(LIBRARY_DIR)/standard-elements.ly
LILYPOND = lilypond.exe
LILYPOND_PROD_OPTIONS = -dno-point-and-click -ddelete-intermediate-files
COMMON_DEPS = Words-and-music.ly ../hymn_settings.ly $(LIBRARY_FILES)
MIDI_FILES = Audio_all.mid Audio_soprano.mid Audio_alto.mid Audio_tenor.mid Audio_bass.mid
BUILD_DIR = ../../docs/Source/$(ACCESS)/$(STATUS)/$(PROD_BASE_NAME)
PUBLIC_BUILD_DIR = ../../docs/Source/public/$(STATUS)/$(PROD_BASE_NAME)
PROD_SHEET_MUSIC = $(BUILD_DIR)/$(PROD_BASE_NAME)_sheet_music.pdf
PROD_SHEET_MUSIC_THUMBNAIL = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_sheet_music_thumbnail.png
PROD_SLIDES_MUSIC = $(BUILD_DIR)/$(PROD_BASE_NAME)_slides.pdf
PROD_SLIDES_MUSIC_THUMBNAIL = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_slides_thumbnail.png
THUMBNAIL_RESOLUTION = x500
# SOUNDFONT = ../../media/CT8MGM.SF2
SOUNDFONT = /usr/share/sounds/sf2/FluidR3_GM.sf2
# SOUNDFONT = ../../media/dsf_vocal_expressions.sf2
PROD_ALL_MUSIC = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_audio_all.mp3
PROD_SOPRANO_MUSIC = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_audio_soprano.mp3
PROD_ALTO_MUSIC = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_audio_alto.mp3
PROD_TENOR_MUSIC = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_audio_tenor.mp3
PROD_BASS_MUSIC = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_audio_bass.mp3

.PHONY: local prod clean prodclean

prod:	$(PROD_SHEET_MUSIC) \
	$(PROD_SHEET_MUSIC_THUMBNAIL) \
	$(PROD_SLIDES_MUSIC) \
	$(PROD_SLIDES_MUSIC_THUMBNAIL) \
	$(PROD_ALL_MUSIC) \
	$(PROD_SOPRANO_MUSIC) \
	$(PROD_ALTO_MUSIC) \
	$(PROD_TENOR_MUSIC) \
	$(PROD_BASS_MUSIC)

local: Sheet-Music.pdf Slides.pdf $(MIDI_FILES)

clean:
	rm *.pdf
	rm *.mid
	rm *.wav

prodclean:
	rm $(PROD_SHEET_MUSIC)
	rm $(PROD_SHEET_MUSIC_THUMBNAIL)
	rm $(PROD_SLIDES_MUSIC)
	rm $(PROD_SLIDES_MUSIC_THUMBNAIL)
	rm $(PROD_ALL_MUSIC)
	rm $(PROD_SOPRANO_MUSIC)
	rm $(PROD_ALTO_MUSIC)
	rm $(PROD_TENOR_MUSIC)
	rm $(PROD_BASS_MUSIC)

Sheet-Music.pdf: Sheet-Music.ly $(COMMON_DEPS)
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Sheet-Music.ly

Slides.pdf: Slides.ly $(COMMON_DEPS)
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Slides.ly

$(MIDI_FILES): Audio.ly $(COMMON_DEPS) $(LIBRARY_DIR)/midi.ly
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Audio.ly

$(PROD_SHEET_MUSIC): $(BUILD_DIR) Sheet-Music.pdf
	cp Sheet-Music.pdf $(PROD_SHEET_MUSIC)

$(PROD_SHEET_MUSIC_THUMBNAIL): $(PUBLIC_BUILD_DIR) Sheet-Music.pdf
	convert -thumbnail $(THUMBNAIL_RESOLUTION) -background white -alpha remove Sheet-Music.pdf[0] $(PROD_SHEET_MUSIC_THUMBNAIL)

$(PROD_SLIDES_MUSIC): $(BUILD_DIR) Slides.pdf
	pdftk Slides.pdf multibackground ../../media/slide_background_4x3.pdf output $(PROD_SLIDES_MUSIC)

$(PROD_SLIDES_MUSIC_THUMBNAIL): $(PUBLIC_BUILD_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(THUMBNAIL_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[0] $(PROD_SLIDES_MUSIC_THUMBNAIL)

$(PROD_ALL_MUSIC): $(PUBLIC_BUILD_DIR) Audio_all.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_all.mid
	lame --preset standard out.wav $(PROD_ALL_MUSIC)

$(PROD_SOPRANO_MUSIC): $(PUBLIC_BUILD_DIR) Audio_soprano.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_soprano.mid
	lame --preset standard out.wav $(PROD_SOPRANO_MUSIC)

$(PROD_ALTO_MUSIC): $(PUBLIC_BUILD_DIR) Audio_alto.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_alto.mid
	lame --preset standard out.wav $(PROD_ALTO_MUSIC)

$(PROD_TENOR_MUSIC): $(PUBLIC_BUILD_DIR) Audio_tenor.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_tenor.mid
	lame --preset standard out.wav $(PROD_TENOR_MUSIC)

$(PROD_BASS_MUSIC): $(PUBLIC_BUILD_DIR) Audio_bass.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_bass.mid
	lame --preset standard out.wav $(PROD_BASS_MUSIC)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(PUBLIC_BUILD_DIR):
	mkdir -p $(PUBLIC_BUILD_DIR)

# shell script to enable PsychPortAudio in Psychtoolbox to work again with the alsa devise to enable sound playing (for dual-boot Ubuntu-Windows computers)

# first remove the alsa-base pulseaudio from Ubuntu (this assumes already install in the computer)
sudo apt-get remove --purge alsa-base pulseaudio
# re-install alsa-base pulseaudio
sudo apt-get install alsa-base pulseaudio
sudo alsa force-reload
# change from read-only to read, write, and executable permission for alsa-base.conf
chmod 777 /etc/modprobe.p/alsa-base.conf
# add this line at the end of the alsa-base.conf to allow the headset to output sound when running PsychPortAudio
echo 'options snd-hda-intel model=dell-headset-multi' >> /etc/modprobe.p/alsa-base.conf
# reboot computer for changes to take place
reboot


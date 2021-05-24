# AirPods coonector

This module enables your MacBook to connet your AirPods forcibly regardless other connected iPhone.

# How to install

Just install 2 modules and create symlink to execute.
Then, create your setting file named 'setting.txt' refering to sample.txt.

- Step 1: `# brew install bluetoothconnector`
- Step 2: `# brew install switchaudio-osx`
- Step 3: `# ln - s <your path to airpods.sh> <your directory to execute>`
- Step 4: `# cp sample.txt setting.txt` and write down your own setting.

# How to confirm your AirPods address

- `# bluetoothconnector`

# How to confirm your AirPods name

- `# SwitchAudioSource -a`

# Usage

Even if AirPods is connected to your iPhone, this module can rob the connection and enables AirPods forcibly on your MacBook. Voice from AirPods notices you if your connection is done.

- `# ./airpods.sh`

# Origin

Modifying the original code from this source. Thank you, Yoshiori-san.

https://yoshiori.hatenablog.com/entry/2021/04/13/171405

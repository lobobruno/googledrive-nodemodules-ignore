# Typescript Boilerplate

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
[![Twitter URL][twitter-shield]][twitter-url]

<!-- toc -->

- [💡 Description](#-description)
- [🚀 Scripts](#-scripts)
<!-- tocstop -->

# 💡 Description

Workaround scripts to "ignore" node_modules inside Google Drive.
It place the node_modules folder outside the Google Drive and create a symbolic link to your project directory.

# 🚀 Scripts

---

- [**find-replace-in-folder.ps1**](find-replace-in-folder.ps1)
  For Windows: Use it the go through the entire Google Drive and replace all node_modules with a symbolic link to your project directory.
  ***
- [**link-nodemodules.bat**](link-nodemodules.bat)
  For Windows: Use it when creating a new project. Place the script inside the project folder and run it.
  It will create the node_modules symbolic link for that project.

---

- [**link-nodemodules.sh**](link-nodemodules.sh)
  Linux/Mac: Use it when creating a new project. Place the script inside the project folder and run it.
  It will create the node_modules symbolic link for that project.

---

# 📣 Feedback & Contact

If you have any suggestions or want to let us know what you think about the project, send us a message at [![Twitter URL][twitter-shield-msg]][twitter-url]

[contributors-shield]: https://img.shields.io/github/contributors/lobobruno/googledrive-nodemodules-ignore.svg?style=for-the-badge
[contributors-url]: https://github.com/lobobruno/googledrive-nodemodules-ignore/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/lobobruno/googledrive-nodemodules-ignore.svg?style=for-the-badge
[forks-url]: https://github.com/lobobruno/googledrive-nodemodules-ignore/network/members
[stars-shield]: https://img.shields.io/github/stars/lobobruno/googledrive-nodemodules-ignore.svg?style=for-the-badge
[stars-url]: https://github.com/lobobruno/googledrive-nodemodules-ignore/stargazers
[issues-shield]: https://img.shields.io/github/issues/lobobruno/googledrive-nodemodules-ignore.svg?style=for-the-badge
[issues-url]: https://github.com/lobobruno/googledrive-nodemodules-ignore/issues
[license-shield]: https://img.shields.io/github/license/lobobruno/googledrive-nodemodules-ignore.svg?style=for-the-badge
[license-url]: https://github.com/lobobruno/googledrive-nodemodules-ignore/blob/main/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/lobobruno
[twitter-shield]: https://img.shields.io/twitter/url/https/twitter.com/brunowlf.svg?style=social&label=Follow%20%40brunowlf
[twitter-shield-msg]: https://img.shields.io/twitter/url/https/twitter.com/brunowlf.svg?style=social&label=%20%40brunowlf
[twitter-url]: https://twitter.com/brunowlf

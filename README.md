<h1 align="center">🍺 homebrew-goome 🍺</h1>

<p align="center"><b>See-through overlays, normal app windows, game mod menus and engine ui for any C program. One file, no dependencies, Linux, Windows, Mac.</b></p>

<p align="center">
This is the Homebrew tap for <a href="https://github.com/goome-ui/c-goome">goome</a>. i made goome because i wanted one header i could drop into anything, and this just puts that header (plus the backend headers) where your compiler can find it.
<br><br>
Do you like this? If so, please let me know! <a href="https://sevvy-wevvy.com/discord">Discord</a>
</p>

<details>
<summary align="center"><b>🍺 Easy Install 🍺</b></summary>
<p align="center">
<code>brew tap goome-ui/goome && brew install goome</code>
<br><br>
goome is header only, so nothing gets built. In exactly one .c file:
<br><br>
<code>#define GOOME_IMPLEMENTATION</code>
<br>
<code>#include &lt;goome.h&gt;</code>
<br><br>
On Linux link with <code>-ldl</code>. The backends (goome_glfw.h, goome_gl3.h and the rest) are in the same include folder.
</p>
</details>

<details>
<summary align="center"><b>🛠 Pull Requests 🛠</b></summary>
<p align="center">
Formula broke or a new goome version isnt here yet? Make a pull request or tell me on Discord. As long as it works its very likely to get accepted.
</p>
</details>

<details>
<summary align="center"><b>📜 License 📜</b></summary>
<p align="center">
GPL-3.0, same as goome.
<br><br>
In short: play fair, keep it open, and give credit where its due.
</p>
</details>

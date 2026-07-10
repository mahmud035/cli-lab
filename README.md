# 🖥️ CLI‑Lab: My Linux CLI Practice Hub

Organized and curated collection of real‑world Linux shell practice, commands, scripts, and reference materials. My personal sandbox for strengthening and showcasing CLI mastery.

---

## 🚀 Overview

This repository serves as my central Linux CLI playground — a place where I explore, experiment, and evolve my command‑line skills. It’s a modular collection of:

- 🧠 Learned commands & techniques
- 💻 Practice exercises & shell scripts
- 📁 Work grouped by learning source (book / course / channel)
- 📌 Command output, data files, and notes
- 🧩 Small helper scripts and experiments

Think of it as an ever‑growing **library of shell fluency** in structured form.

---

## 📂 Repository Structure

Everything lives under **`playground/`**, grouped by the book, course, or channel it came from — so each folder tracks a specific learning path end to end, rather than splitting by topic.

```
cli-lab/
├── playground/
│   ├── tlcl-book/              # "The Linux Command Line" (W. Shotts) — chapters 16–33
│   ├── tlcl-bootcamp/          # extra TLCL-based scripting exercises
│   ├── learn-linux-tv/         # Learn Linux TV — bash scripting
│   ├── learn-linux:boot.dev/   # boot.dev Linux course (the "worldbanc" project)
│   ├── linux-journey/          # Linux Journey lessons
│   ├── ubuntu-tutorial/        # Ubuntu tutorial exercises
│   └── youtube/                # assorted YouTube-course practice
└── README.md
```

- **tlcl-book/** — the richest folder: numbered chapters from *The Linux Command Line* covering searching for files, regular expressions, text processing, formatting/printing output, flow control (`if` / `case` / `while` / `for`), positional parameters, reading keyboard input, compiling programs, and troubleshooting.
- **tlcl-bootcamp/** — additional exercises built on the same book (e.g. piping challenges).
- **learn-linux-tv/**, **learn-linux:boot.dev/**, **linux-journey/**, **ubuntu-tutorial/**, **youtube/** — hands-on practice following those respective courses.

The material is mostly practical: shell scripts (`*.sh`), command output and sample data (`*.txt`, `*.csv`, `*.log`), and — for the compiling chapter — a bit of C (`*.c` / `*.h`).

---

## 📚 How to Use This Repo

1. **Pick a source folder** under `playground/` (e.g. `tlcl-book/`) and follow it in order.
2. **Read** the scripts and their inline comments to understand the syntax and intent.
3. **Run** the `*.sh` scripts and inspect the `*.txt` / `*.log` output files alongside them.
4. **Modify and re-run** to reinforce the concept.

---

## 🎯 Why This Matters

- Builds fluency in Linux shell fundamentals through structured, hands-on repetition.
- Keeps each learning path (book/course) self-contained and easy to revisit.
- Centralized location: no loose scripts or notes scattered across the machine.
- Ready to extend with new sources and topics — containerization, DevOps tooling, automation, etc.

---

## 🛠️ Getting Started

```bash
git clone https://github.com/mahmud035/cli-lab.git
cd cli-lab

# Explore a topic and run a script directly, e.g.:
ls playground/tlcl-book
bash playground/learn-linux-tv/bash-scripts/*.sh
```

Add new material using a standard Git workflow:

```bash
git checkout -b feature/your-topic
# add content and test
git add .
git commit -m "Add topic: your-topic-name"
git push origin feature/your-topic
```

---

## ✅ Best Practices

- **Modular**: keep each learning source in its own folder for clarity.
- **Descriptive**: name files to reflect their content.
- **Self‑contained**: scripts should include comments explaining their logic.
- **Reproducible**: keep sample inputs and expected outputs next to the scripts.
- **Documentation**: note practical tips, pitfalls, and example use cases.

---

## 🌱 Future Expansion Ideas

- Add **interactive challenge prompts** and practice test cases.
- Use **`tldr-pages` style summaries** per command for quick reference.
- Automate creation of README sections from folder structure or script comments.
- Add per-source index notes so each learning path has a short summary.

---

## 📄 License

This repository is licensed under the **MIT License**. Feel free to use, extend, or adapt it to your needs.

---

## 🙏 Acknowledgements

Inspired by and built while following:

- [The Linux Command Line](https://linuxcommand.org/tlcl.php) by William Shotts
- [Learn Linux TV](https://www.learnlinux.tv/)
- [boot.dev](https://www.boot.dev/) · [Linux Journey](https://linuxjourney.com/)
- Reference collections like [The Art of Command Line](https://github.com/jlevy/the-art-of-command-line) and [tldr-pages](https://tldr.sh/)

---

> **cli‑lab** is my resilient, continuously improving toolbox: a rigorous, practical, and structured environment to elevate Linux CLI skills. Enjoy building it — and push it further!

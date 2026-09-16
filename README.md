# Local Banana Slides launcher

A small Windows batch-file launcher for an already installed local [Banana Slides](https://github.com/Anionex/banana-slides) checkout. It starts `ollama serve`, then opens the Banana Slides backend and frontend in separate command windows.

This repository does not contain a presentation generator, a Stable Diffusion integration, templates, application source, or dependency manifests. It is a personal local-launch example.

## Prerequisites

Install and configure these separately:

- Ollama, available as `ollama` on `PATH`;
- a working Banana Slides checkout with its own backend and frontend dependencies;
- `uv` for the backend and Node/npm for the frontend.

Stable Diffusion WebUI is not started by this script. Start and configure it separately if your Banana Slides setup uses it.

## Configure and run

Open `启动蕉幻PPT.bat` and replace these two personal paths with your own Banana Slides directories:

```bat
E:\AI\banana-slides\backend
E:\AI\banana-slides\frontend
```

Then double-click the batch file. It waits briefly after starting Ollama, opens the backend with `uv run python app.py`, and opens the frontend with `npm run dev`. The script displays `http://localhost:3000`, but the actual address and availability are determined by your external Banana Slides installation.

## Notes

- The script does not verify prerequisites or install packages.
- Stop the backend and frontend in their command windows when finished. An Ollama service that was already running must be managed separately.
- Keep local configuration, model files, generated decks, and personal data out of this repository.

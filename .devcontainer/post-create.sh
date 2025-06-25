#!/bin/bash

echo "Running post-create script..."
export PIP_BREAK_SYSTEM_PACKAGES=1
python3 -m pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir fastmcp fastapi "pydantic>=2" psutil psutils beautifulsoup4 \
        aiosqlite supabase asyncpg psycopg2-binary openai python-dotenv python-frontmatter markdown python-slugify \
        httpx aiohttp aiofiles websockets \
        flake8 bandit pytest black isort ruff files-to-prompt ipython rich httpie uv playwright
python3 -m playwright install --with-deps chromium firefox webkit

npm install -g @anthropic-ai/claude-code

claude update
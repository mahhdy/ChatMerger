from setuptools import setup, find_packages

setup(
    name="chat-merger",
    version="1.0.0",
    description="Merge segmented AI chat responses into clean Markdown",
    author="Your Name",
    python_requires=">=3.8",
    py_modules=["chat_merger"],
    install_requires=[
        "pyyaml>=6.0",
        "rich>=13.0",
        "rapidfuzz>=3.0",
    ],
    entry_points={
        "console_scripts": [
            "chat-merger=chat_merger:main",
        ],
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
)

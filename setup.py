import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setuptools.setup(
    name="mle-Anish.S-housing",
    version="v0.3",
    author="Anish",
    author_email="anish.shukla@tigeranalytics.com",
    description="A installable housing-package",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/Shuklanish/mle-training",

    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    package_dir={"": "src"},
    packages=setuptools.find_packages(where="src"),
    python_requires=">=3.6",
)
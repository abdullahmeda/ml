.PHONY: init install clean r

# Create a local virtual environment in .venv and upgrade pip
env:
	python3 -m venv .venv
	. .venv/bin/activate && pip install --upgrade pip


# Install the packages in the virtual environment
install:
	. .venv/bin/activate && pip install -e .


# Remove the virtual environment directory
clean:
	rm -rf .venv


r:
	sudo apt update
	sudo apt install r-base
	sudo R
	# install.packages('IRkernel')
	# IRkernel::installspec()
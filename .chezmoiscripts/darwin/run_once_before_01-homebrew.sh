#!{{ lookPath "sh" }}

# templates
{{ template "logs" . }}
{{ template "sudo" . }}

bot "01-homebrew.sh"

running "looking for homebrew"
if [[ $(command -v brew) ]]; then
	ok "homebrew already installed"
else
	warn "homebrew not found"
	running "installing homebrew"
	# sudo softwareupdate -i -a
	# {{ lookPath "sh" }} -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	ok "homebrew successfully installed"
fi

bot "[DONE] 01-homebrew.sh"

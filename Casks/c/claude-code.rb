cask "claude-code" do
  version "0.2.9"
  sha256 :no_check

  url "https://claude.ai/cli",
      verified: "claude.ai/"
  name "Claude Code"
  desc "Agentic coding tool that lives in your terminal"
  homepage "https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview"

  auto_updates true
  container type: :naked

  installer script: {
    executable: "installer.sh",
  }

  uninstall script: {
    executable: "installer.sh",
    args:       ["--uninstall"],
  }

  zap trash: [
    "~/.claude.json",
    "~/.claude/",
  ]
end

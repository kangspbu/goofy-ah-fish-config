function gitvl
    # Cek apakah di direktori Git
    if not git rev-parse --is-inside-work-tree > /dev/null 2>&1
        echo -e "\033[0;31m Not a Git repository!\033[0m"
        return
    end

    # Colors
    set GREEN "\033[0;32m"
    set YELLOW "\033[1;33m"
    set RED "\033[0;31m"
    set BLUE "\033[0;34m"
    set RESET "\033[0m"


    # Staged files
    set staged (git diff --cached --name-only)
    if test (count $staged) -gt 0
        echo -e "$GREEN✅ Staged files:$RESET"
        for f in $staged
            echo "   $f"
        end
    else
        echo -e "$GREEN✅ Staged files: none$RESET"
    end

    # Unstaged files
    set unstaged (git diff --name-only)
    if test (count $unstaged) -gt 0
        echo -e "$YELLOW✏️  Modified (unstaged):$RESET"
        for f in $unstaged
            echo "   $f"
        end
    else
        echo -e "$YELLOW✏️  Modified (unstaged): none$RESET"
    end

    # Untracked files
    set untracked (git ls-files --others --exclude-standard)
    if test (count $untracked) -gt 0
        echo -e "$RED➕ Untracked files:$RESET"
        for f in $untracked
            echo "   $f"
        end
    else
        echo -e "$RED➕ Untracked files: none$RESET"
    end
end

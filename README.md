# Abtion Guidelines

<style>
    .chat {
        position: fixed;
        z-index: 1;
        left: 0;
        right: 0;
        bottom: 0;
        padding-inline: 0;
        max-width: 960px;
        margin-inline: auto;
    }
    .chat__relative {
        position: relative;
    }
    .chat__toggle {
        position: absolute;
        border: none;
        background-color: transparent;
    }
    .chat__toggle--open {
        inset: 0;
        width: 100%;
        cursor: text;
    }
    .chat__toggle--close {
        top: 0;
        left: 0;
        width: 48px;
        height: 48px;
        cursor: pointer;
    }
    .chat__toggle--hidden {
        display: none;
    }
    .chat__iframe {
        width: 100%;
        height: 80px;
        margin-bottom: -4px;
    }
    .chat__iframe--open {
        height: 50vh;
    }
    @media only screen and (min-width: 960px) {
        .chat {
            left: 160px;
            margin-inline: 0;
            max-width: 800px;
        }
    }
    @media only screen and (min-width: 1300px) {
        .chat {
            left: 500px;
        }
    }
</style>

<div id="GPTChat" class="chat">
    <div class="chat__relative">
        <button id="GPTiframeOpen" class="chat__toggle chat__toggle--open"></button>
        <iframe
            id="GPTiframe"
            class="chat__iframe"
            src="{{ site.abtion_gpt_url }}"
        ></iframe>
    </div>
</div>

<script>
    (function () {
        const payload = {
            open: false,
            transitionDuration: 300
        }

        addEventListener("DOMContentLoaded", function () {
            const openButton = document.getElementById("GPTiframeOpen");

            openButton.addEventListener("click", open);
            document.body.addEventListener("mousedown", handleClickOutside);
        });

        function open() {
            const iframe = document.getElementById("GPTiframe");
            const openButton = document.getElementById("GPTiframeOpen");

            payload.open = true;
            iframe.contentWindow.postMessage(payload, "*");
            
            iframe.classList.add("chat__iframe--open");
            openButton.classList.add("chat__toggle--hidden");
        }

        function close() {
            const iframe = document.getElementById("GPTiframe");
            const openButton = document.getElementById("GPTiframeOpen");

            payload.open = false;
            iframe.contentWindow.postMessage(payload, "*");

            setTimeout(() => {
                iframe.classList.remove("chat__iframe--open");
                openButton.classList.remove("chat__toggle--hidden");
            }, payload.transitionDuration);
        }

        function handleClickOutside(event) {
            if (!payload.open) return;

            const targetElement = document.getElementById("GPTChat");
            if (targetElement && !targetElement.contains(event.target)) {
                close();
            }
        }
    })();
</script>

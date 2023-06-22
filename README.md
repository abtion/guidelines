# Abtion Guidelines

<style>
    .chat {
        position: fixed;
        z-index: 1;
        left: 0;
        right: 0;
        bottom: 0;
        padding-inline: 0;
        margin-inline: auto;
        max-width: 800px;
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
            left: 128px;
            margin-inline: 0;
        }
    }
    @media only screen and (min-width: 1300px) {
        .chat {
            left: 340px;
            padding-inline: 40px;
        }
    }
</style>

<div class="chat">
    <div class="chat__relative">
        <button id="GPTiframeOpen" class="chat__toggle chat__toggle--open"></button>
        <button id="GPTiframeClose" class="chat__toggle chat__toggle--close chat__toggle--hidden"></button>
        <iframe
            id="GPTiframe"
            class="chat__iframe"
            src="{{ site.abtion_gpt_url }}"
        ></iframe>
    </div>
</div>

<script>
    (function () {
        addEventListener("DOMContentLoaded", function () {
            const iframe = document.getElementById("GPTiframe");
            const openButton = document.getElementById("GPTiframeOpen");
            const closeButton = document.getElementById("GPTiframeClose");

            const payload = {
                open: false,
                transitionDuration: 300
            }

            openButton.addEventListener("click", () => {
                open(iframe, openButton, closeButton, payload)
            });
            closeButton.addEventListener("click", () => {
                close(iframe, openButton, closeButton, payload)
            });
        });

        function open(iframe, openButton, closeButton, payload) {
            iframe.contentWindow.postMessage(
                { ...payload, open: true },
                "*"
            );
            iframe.classList.add("chat__iframe--open");
            openButton.classList.add("chat__toggle--hidden");
            closeButton.classList.remove("chat__toggle--hidden");
        }

        function close(iframe, openButton, closeButton, payload) {
            iframe.contentWindow.postMessage(
                { ...payload, open: false },
                "*"
            );
            setTimeout(() => {
                iframe.classList.remove("chat__iframe--open");
                openButton.classList.remove("chat__toggle--hidden");
                closeButton.classList.add("chat__toggle--hidden");
            }, payload.transitionDuration);
        }
    })();
</script>

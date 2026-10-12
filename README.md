# instagram-skill-jeff

13 skills de Claude Code para manejar una cuenta de Instagram: guiones de Reels,
captions, carruseles, stories, DMs, comentarios, plan semanal, auditoría y un
"humanizador" de texto.

## Origen

Copia fija de [Jakeschincariol/instagram-agent-skill](https://github.com/Jakeschincariol/instagram-agent-skill)
en el commit `d03c56b`, revisada antes de instalarla: sin código de red, sin
hooks, sin instrucciones ocultas. Los scripts de Python solo usan la librería
estándar. Licencia MIT del autor original en `LICENSE`. La documentación
original está en `README-original.md`.

Al ser una copia fija, no recibe actualizaciones automáticas del autor. Si
quieres actualizar, revisa los cambios antes de traerlos.

## Uso

Abre una sesión de Claude Code sobre este repo y las skills se cargan solas
desde `.claude/skills/`: `/ig-reel`, `/ig-caption`, `/ig-carousel`, `/ig-story`,
`/ig-dm`, `/ig-comment`, `/ig-reply`, `/ig-plan`, `/ig-profile`, `/ig-audit`,
`/ig-repurpose`, `/ig-viral`, `/ig-human`.

Para instalarlas en tu computadora para todos los proyectos:

```bash
cp -r .claude/skills/ig-* ~/.claude/skills/
```

Recomendado: copia `templates/voice.md` a `~/.claude/instagram/voice.md` y
llénalo con tu forma de hablar. Todas las skills lo leen.

Nota: las skills y sus listas de detección están pensadas para inglés. Puedes
pedir contenido en español, pero los puntajes del humanizador y de los hooks
pueden ser menos precisos.

## Tu voz y archivos de trabajo

`instagram/voice.md` tiene la voz de @jeffreycamilo7. En sesiones de Claude
Code en la nube, un hook de inicio (`.claude/hooks/session-start.sh`) enlaza
`~/.claude/instagram` a esa carpeta, así las skills leen `voice.md` y lo que
escriben (`plan.md`, `log.md`, `swipe.md`) queda dentro del repo. Haz commit
de esos archivos para conservarlos entre sesiones.

En tu computadora, copia `instagram/voice.md` a `~/.claude/instagram/voice.md`.

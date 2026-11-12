# Banner prompt

- Model: Z-Image Turbo (`z_image_turbo_bf16.safetensors`, CLIP `qwen_3_4b.safetensors` type lumina2, VAE `ae.safetensors`)
- Host: Mac 192.168.86.100:8188 (ComfyUI)
- Workflow: comfyui-gen `building-sprite-workflow.api.json` with node 4 text set to the prompt alone and node 6 set to 1536x640
- Sampler: KSampler, 9 steps, cfg 1.0, `res_multistep`, scheduler `simple`, denoise 1.0, empty negative
- Seed: 1104 (picked from four seeds, 1101-1104, on a 2x2 contact sheet)
- Output: banner.jpg 1536x640 JPEG q88; social-preview.jpg is the 1280x640 centre crop
- Generated 2026-11-11. Original imagery; no official MADNESS Combat or Project Nexus art.

## Prompt

Wide comic-style illustration, stark grey palette with red accents. A faceless grey stick-figure man with a round blank head, wearing a black suit and tie, stands on the right as a film director, holding a megaphone, a wooden director's chair and a black-and-white clapperboard beside him. In front of him on the left, a bare grey concrete room where a fight is frozen in mid-action: three other faceless grey stick-figure men in suits caught mid-punch and mid-fall, motionless as if time stopped, a few red splatter drops hanging in the air. Small square outlines painted on the concrete floor in black and red mark patrol spots. Overhead spotlight, bold black ink outlines, flat shading, gritty concrete textures, no text, no letters.

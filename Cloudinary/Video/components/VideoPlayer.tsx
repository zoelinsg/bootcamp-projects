'use client';

import { useCallback, useRef } from 'react';
import cloudinary from 'cloudinary-video-player';
import 'cloudinary-video-player/cld-video-player.min.css';
import 'cloudinary-video-player/playlist';
import 'cloudinary-video-player/adaptive-streaming';

type CloudinaryVideoPlayerInstance = ReturnType<typeof cloudinary.videoPlayer>;

export default function VideoPlayer() {
  const playerRef = useRef<CloudinaryVideoPlayerInstance | null>(null);

  const videoRef = useCallback((el: HTMLVideoElement | null) => {
    if (!el || playerRef.current) return;

    const player = cloudinary.videoPlayer(el as unknown as string, {
      cloudName: process.env.NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME,
      fluid: true,
    });

    player.playlist(
      [
        {
          publicId: 'baseball-cap-vid1_w3lgxi',
          transformation: [{ width: 800, height: 450, crop: 'fill' }],
          posterOptions: {
            transformation: [
              { width: 100, height: 100, crop: 'fill', gravity: 'auto' },
            ],
          },
        },
        {
          publicId: 'baseball-cap-vid2_pdnjbc',
          transformation: [
            { width: 800, height: 450, crop: 'fill', gravity: 'auto' },
          ],
          posterOptions: {
            transformation: [
              { width: 100, height: 100, crop: 'fill', gravity: 'auto' },
            ],
          },
        },
      ],
      {
        autoAdvance: true,
        repeat: false,
        presentUpcoming: 5,
      }
    );

    playerRef.current = player;
  }, []);

  return (
    <video
      ref={videoRef}
      className="cld-video-player cld-fluid"
      controls
    />
  );
}
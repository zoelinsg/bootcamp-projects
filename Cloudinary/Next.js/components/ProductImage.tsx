'use client';
import { CldImage } from 'next-cloudinary';

export default function ProductImage({
  publicId,
  width,
  height,
  discount = false,
}: {
  publicId: string;
  width: number;
  height: number;
  discount?: boolean;
}) {
  return (
    <CldImage
      src={`${publicId}`}
      alt={`Product: ${publicId}`}
      width={width}
      height={height}
      crop={{
        type: 'fill',
        source: true,
        gravity: 'auto',
      }}
      overlays={[
        {
          publicId: `capital-caps-logo`,
          width: 300,
          position: {
            x: 0,
            y: 0,
            gravity: 'north_east',
          },
          effects: [
            {
              opacity: 50,
            },
          ],
        },
        ...(discount
          ? [
              {
                text: {
                  fontFamily: 'Lobster',
                  fontSize: 80,
                  text: ' 20% OFF ',
                  color: 'white',
                },
                position: {
                  gravity: 'north_west',
                  angle: -45,
                },
                effects: [
                  {
                    background: 'rgb:FF1744',
                  },
                ],
              },
            ]
          : []),
      ]}
    />
  );
}
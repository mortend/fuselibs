using Uno;
using Uno.Graphics.Utils;

namespace Experimental.TextureLoader
{
	[Obsolete]
	public class InvalidContentTypeException : Exception
	{
		public InvalidContentTypeException(string reason) : base(reason) { }
	}

	[Obsolete]
	public static class TextureLoader
	{
		[Obsolete]
		public static texture2D JpegByteArrayToTexture2D(byte[] arr)
		{
			return Uno.Graphics.Utils.TextureLoader.Load2DJpeg(arr);
		}

		[Obsolete]
		public static texture2D PngByteArrayToTexture2D(byte[] arr)
		{
			return Uno.Graphics.Utils.TextureLoader.Load2DPng(arr);
		}

		[Obsolete]
		public static texture2D ByteArrayToTexture2DFilename(byte[] arr, string filename)
		{
			return Uno.Graphics.Utils.TextureLoader.Load2D(filename, arr);
		}

		[Obsolete]
		public static texture2D ByteArrayToTexture2DContentType(byte[] arr, string contentType)
		{
			if (contentType.IndexOf("image/jpeg") != -1 || contentType.IndexOf("image/jpg") != -1)
				return JpegByteArrayToTexture2D(arr);
			else if (contentType.IndexOf("image/png") != -1)
				return PngByteArrayToTexture2D(arr);
			else if (contentType.IndexOf("application/octet-stream") != -1)
				return JpegByteArrayToTexture2D(arr);
			else if (contentType.IndexOf("binary/octet-stream") != -1)
				return JpegByteArrayToTexture2D(arr);
			else
				throw new InvalidContentTypeException(contentType);
		}
	}
}

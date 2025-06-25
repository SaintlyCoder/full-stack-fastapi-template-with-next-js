import type { AppProps } from 'next/app'
import { CustomProvider } from '@/components/ui/provider'

export default function App({ Component, pageProps }: AppProps) {
  return (
    <CustomProvider>
      <Component {...pageProps} />
    </CustomProvider>
  )
}

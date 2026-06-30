cask "keyboardsound" do
  version "1.2"
  sha256 "744490398588ae57ba109b4361f065c3eae6b34e6c20e312e21fdd61731ef3ef"

  url "https://github.com/DevVenusK/KeyboardSound/releases/download/v#{version}/KeyboardSound.zip"
  name "KeyboardSound"
  desc "메뉴바 기계식 키보드 타건음 앱 (청축/갈축/적축/토프레 절차적 합성)"
  homepage "https://github.com/DevVenusK/KeyboardSound"

  app "KeyboardSound.app"

  caveats <<~EOS
    KeyboardSound는 전역 키 입력 감지를 위해 입력 모니터링 권한이 필요합니다:
      시스템 설정 > 개인정보 보호 및 보안 > 입력 모니터링 에서 KeyboardSound 허용

    이 빌드는 공증(notarization)되지 않았습니다. 첫 실행 시 Gatekeeper 경고가 뜨면
    Finder에서 앱을 우클릭 → 열기 하거나 다음을 실행하세요:
      xattr -dr com.apple.quarantine "$(brew --prefix)/Caskroom/keyboardsound/#{version}/KeyboardSound.app"
  EOS
end

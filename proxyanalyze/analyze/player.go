package analyze

type Player struct {
	acId     int
	nickname string
}

func NewPlayer(acid int, nickname string) *Player {
	return &Player{
		acId:     acid,
		nickname: nickname,
	}
}

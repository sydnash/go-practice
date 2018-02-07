package analyze

type Club struct {
	Id      int
	Creator *Player
	Players []*Player
}

func NewClub(id int, creator *Player) *Club {
	return &Club{
		Id:      id,
		Creator: creator,
	}
}

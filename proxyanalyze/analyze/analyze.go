package analyze

func GenerateProxyList(clubs map[int]*Club) map[int]*Proxy {
	ret := make(map[int]*Proxy)
	for _, club := range clubs {
		proxy, ok := ret[club.Creator.acId]
		if !ok {
			proxy = &Proxy{}
			proxy.playerInfo = club.Creator
			ret[club.Creator.acId] = proxy
			proxy.players = make(map[int]*Player)
		}

		for _, p := range club.Players {
			proxy.players[p.acId] = p
		}
	}
	return ret
}

type ClubCompare struct {
	club1 *Club
	club2 *Club
	same  []*Player
}

func compareClub(clubA, clubB *Club, threshold int) *ClubCompare {
	ret := &ClubCompare{
		club1: clubA,
		club2: clubB,
	}
	for _, player := range clubA.Players {
		for _, pb := range clubB.Players {
			if player.acId == pb.acId {
				ret.same = append(ret.same, player)
			}
		}
	}
	if len(ret.same) < threshold {
		return nil
	}
	return ret
}

type ProxyCompare struct {
	proxy1 *Proxy
	proxy2 *Proxy
	same   []*Player
}

func compareProxy(proxyA, proxyB *Proxy, threshold int) *ProxyCompare {
	ret := &ProxyCompare{
		proxy1: proxyA,
		proxy2: proxyB,
	}
	for _, player := range proxyA.players {
		if _, ok := proxyB.players[player.acId]; ok {
			ret.same = append(ret.same, player)
		}
	}
	if len(ret.same) == 0 {
		return nil
	}
	return ret
}

type Issue struct {
	proxy  *Proxy
	issues []*ProxyCompare
}

func Analyze(proxies map[int]*Proxy, threshold int) []*Issue {
	issues := []*Issue{}
	for acidA, proxyA := range proxies {
		issue := &Issue{
			proxy: proxyA,
		}
		for acidB, proxyB := range proxies {
			if acidA == acidB {
				continue
			}
			c := compareProxy(proxyA, proxyB, threshold)
			if c != nil {
				issue.issues = append(issue.issues, c)
			}
		}
		if len(issue.issues) > 0 {
			issues = append(issues, issue)
		}
	}
	return issues
}

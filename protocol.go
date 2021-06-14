package kademlia

type Protocol interface {
	Ping(p *KProtocol)
	Store(p *KProtocol)
	FindNode(p *KProtocol)
	FindValue(p *KProtocol)
}

type KProtocol struct {
}

func NewProtocol() Protocol {
	return &KProtocol{}
}

func Ping(p *KProtocol) {
}

func Store(p *KProtocol) {
}

func FindNode(p *KProtocol) {
}

func FindValue(p *KProtocol) {
}

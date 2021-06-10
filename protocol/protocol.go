package protocol

type Protocol interface {
	Ping()
	Store()
	FindNode()
	FindValue()
}

enum MessageType {
  self,
  feedback;

  bool get isSelf => this == self;
}

abstract class UseCase<Type, Params> {
  Type call({Params params});
}

class NoParams {}

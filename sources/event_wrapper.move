module sldotfun::event_wrapper {
    use sui::event;

    /// Generic event wrapper for off-chain indexing.
    public struct Event<T: copy + drop> has copy, drop {
        payload: T,
    }

    /// Emits a generic event wrapped in the Event struct.
    public(package) fun emit_event<T: copy + drop>(payload: T) {
        event::emit(Event { payload });
    }
}